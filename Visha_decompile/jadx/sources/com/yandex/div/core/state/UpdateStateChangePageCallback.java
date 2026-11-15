package com.yandex.div.core.state;

import androidx.viewpager2.widget.ViewPager2;
import defpackage.uv2;
import defpackage.y45;
import defpackage.zv7;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/yandex/div/core/state/UpdateStateChangePageCallback;", "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;", "", "mBlockId", "Luv2;", "mDivViewState", MethodDecl.initName, "(Ljava/lang/String;Luv2;)V", "", "position", "Lzfb;", "onPageSelected", "(I)V", "d", "Ljava/lang/String;", "e", "Luv2;", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class UpdateStateChangePageCallback extends ViewPager2.OnPageChangeCallback {

    public final String mBlockId;

    public final uv2 mDivViewState;

    public UpdateStateChangePageCallback(String str, uv2 uv2Var) {
        y45.j(str, "mBlockId");
        y45.j(uv2Var, "mDivViewState");
        this.mBlockId = str;
        this.mDivViewState = uv2Var;
    }

    @Override
    public void onPageSelected(int position) {
        if (position != -1) {
            this.mDivViewState.d(this.mBlockId, new zv7(position));
        }
    }
}
