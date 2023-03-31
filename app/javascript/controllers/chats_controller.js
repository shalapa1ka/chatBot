import {Controller} from "@hotwired/stimulus";
import {get} from "@rails/request.js";

export default class extends Controller {
    static targets = ["chatItem", "chatFrame", "chatList"];

    async selectChat(event) {
        const li = event.currentTarget;
        const chatId = li.dataset.chatId;
        const url = `chats/${chatId}`;

        try {
            const response = await get(url);

            if (!response.ok) {
                throw new Error(`Something went wrong ${response.statusCode}`);
            }

            this.chatFrameTarget.innerHTML = await response.text;
            this.clearActive()
            li.children[0].classList.add("active");
        } catch (error) {
            console.error(error);
        }
    }

    clearActive() {
        this.chatItemTargets.forEach((chatItem) => {
            chatItem.children[0].classList.remove("active");
        });
    }
}


