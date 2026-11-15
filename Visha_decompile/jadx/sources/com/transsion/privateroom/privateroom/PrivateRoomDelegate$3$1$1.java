package com.transsion.privateroom.privateroom;

class PrivateRoomDelegate$3$1$1 implements Runnable {
    final PrivateRoomDelegate.AnonymousClass3.a this$2;
    final long val$currentMoveSize;
    final double val$progress;

    public PrivateRoomDelegate$3$1$1(PrivateRoomDelegate.AnonymousClass3.a aVar, double d, long j) {
        this.this$2 = aVar;
        this.val$progress = d;
        this.val$currentMoveSize = j;
    }

    @Override
    public void run() {
        PrivateRoomDelegate.AnonymousClass3.a aVar = this.this$2;
        PrivateRoomDelegate.AnonymousClass3 anonymousClass3 = PrivateRoomDelegate.AnonymousClass3.this;
        PrivateRoomDelegate.this.l(aVar.a, this.val$progress, aVar.b, this.val$currentMoveSize, anonymousClass3.val$callback, anonymousClass3.val$files.size() > 1);
    }
}
