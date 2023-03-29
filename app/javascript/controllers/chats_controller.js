import {Controller} from "@hotwired/stimulus";
import {get} from "@rails/request.js";

export default class extends Controller {
    static targets = ["chatItem", "chatFrame", "sidebar"];

    async selectChat(event) {
        const chatId = event.currentTarget.dataset.chatId;
        const url = `chats/${chatId}`;

        try {
            const response = await get(url);

            if (!response.ok) {
                throw new Error(`Something went wrong ${response.statusCode}`);
            }
            console.log(await response.text)
            this.chatFrameTarget.innerHTML = await response.text;

        } catch (error) {
            console.error(error);
        }
    }
}


