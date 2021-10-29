package com.whatsapp;

import android.os.Handler;

/**
* Título: Unknown Client.
* Desarrollador: Unknown-60.
* Código fuente: github.com/Unknown-60
**/

class Conversation$BoomText implements Runnable {
    int count = 0;
    private final Conversation this$0;
    private final Handler val$mHandler;

    Conversation$BoomText(Conversation conversation, Handler handler) {
        Handler handler2 = handler;
        Conversation$BoomText conversation$BoomText = this;
        this.this$0 = conversation;
        this.val$mHandler = handler2;
    }

    static Conversation access$0(Conversation$BoomText conversation$BoomText) {
        return conversation$BoomText.this$0;
    }

    public void run() {
        if (this.count < this.this$0.namiBoomCount()) {
            r0.count++;
            r0.this$0.namiBoomStart();
            boolean post = r0.val$mHandler.post(r0);
        }
    }
}
