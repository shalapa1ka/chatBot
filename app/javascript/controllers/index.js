import { application } from "./application"

import RemovalsController from "./removals_controller"
application.register("removals", RemovalsController)

import ChatsController from "./chats_controller";
application.register("chats", ChatsController);
