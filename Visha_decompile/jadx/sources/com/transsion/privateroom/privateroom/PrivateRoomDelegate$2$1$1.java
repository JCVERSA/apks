package com.transsion.privateroom.privateroom;

class PrivateRoomDelegate$2$1$1 implements Runnable {
    final PrivateRoomDelegate.AnonymousClass2.a this$2;
    final long val$currentMoveSize;
    final double val$progress;

    public PrivateRoomDelegate$2$1$1(PrivateRoomDelegate.AnonymousClass2.a aVar, double d, long j) {
        this.this$2 = aVar;
        this.val$progress = d;
        this.val$currentMoveSize = j;
    }

    @Override
    public void run() {
        PrivateRoomDelegate.AnonymousClass2.a aVar = this.this$2;
        PrivateRoomDelegate.AnonymousClass2 anonymousClass2 = PrivateRoomDelegate.AnonymousClass2.this;
        PrivateRoomDelegate.this.l(aVar.a, this.val$progress, aVar.b, this.val$currentMoveSize, anonymousClass2.val$callback, anonymousClass2.val$files.size() > 1);
    }
}
