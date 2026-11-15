package com.blankj.utilcode.util;

class ShellUtils$1 extends Utils.Task<z.a> {
    final String[] val$commands;
    final boolean val$isNeedResultMsg;
    final boolean val$isRooted;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShellUtils$1(Utils.b bVar, String[] strArr, boolean z10, boolean z11) {
        super(bVar);
        this.val$commands = strArr;
        this.val$isRooted = z10;
        this.val$isNeedResultMsg = z11;
    }

    @Override
    public z.a doInBackground() {
        return z.b(this.val$commands, this.val$isRooted, this.val$isNeedResultMsg);
    }
}
