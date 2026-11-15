package com.blankj.utilcode.util;

class ShellUtils$1 extends Utils.Task<f.a> {
    final String[] val$commands;
    final boolean val$isNeedResultMsg;
    final boolean val$isRooted;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShellUtils$1(Utils.b bVar, String[] strArr, boolean z, boolean z2) {
        super(bVar);
        this.val$commands = strArr;
        this.val$isRooted = z;
        this.val$isNeedResultMsg = z2;
    }

    @Override
    public f.a doInBackground() {
        return f.b(this.val$commands, this.val$isRooted, this.val$isNeedResultMsg);
    }
}
