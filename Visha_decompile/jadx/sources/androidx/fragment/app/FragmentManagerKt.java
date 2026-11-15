package androidx.fragment.app;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.e74;
import defpackage.y45;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u001a5\u0010\u0007\u001a\u00020\u0005*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\u0086\bø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\b\u001a5\u0010\t\u001a\u00020\u0005*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\u0086\bø\u0001\u0000¢\u0006\u0004\b\t\u0010\b\u001a?\u0010\u000b\u001a\u00020\u0005*\u00020\u00002\b\b\u0002\u0010\n\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\f\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\r"}, d2 = {"Landroidx/fragment/app/FragmentManager;", "", "allowStateLoss", "Lkotlin/Function1;", "Landroidx/fragment/app/FragmentTransaction;", "Lzfb;", TtmlNode.TAG_BODY, "commit", "(Landroidx/fragment/app/FragmentManager;ZLe74;)V", "commitNow", "now", "transaction", "(Landroidx/fragment/app/FragmentManager;ZZLe74;)V", "fragment-ktx_release"}, k = 2, mv = {1, 4, 1})
public final class FragmentManagerKt {
    public static final void commit(FragmentManager fragmentManager, boolean z, e74 e74Var) {
        y45.j(fragmentManager, "$this$commit");
        y45.j(e74Var, TtmlNode.TAG_BODY);
        FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager.beginTransaction();
        y45.i(fragmentTransactionBeginTransaction, "beginTransaction()");
        e74Var.invoke(fragmentTransactionBeginTransaction);
        if (z) {
            fragmentTransactionBeginTransaction.commitAllowingStateLoss();
        } else {
            fragmentTransactionBeginTransaction.commit();
        }
    }

    public static void commit$default(FragmentManager fragmentManager, boolean z, e74 e74Var, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        y45.j(fragmentManager, "$this$commit");
        y45.j(e74Var, TtmlNode.TAG_BODY);
        FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager.beginTransaction();
        y45.i(fragmentTransactionBeginTransaction, "beginTransaction()");
        e74Var.invoke(fragmentTransactionBeginTransaction);
        if (z) {
            fragmentTransactionBeginTransaction.commitAllowingStateLoss();
        } else {
            fragmentTransactionBeginTransaction.commit();
        }
    }

    public static final void commitNow(FragmentManager fragmentManager, boolean z, e74 e74Var) {
        y45.j(fragmentManager, "$this$commitNow");
        y45.j(e74Var, TtmlNode.TAG_BODY);
        FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager.beginTransaction();
        y45.i(fragmentTransactionBeginTransaction, "beginTransaction()");
        e74Var.invoke(fragmentTransactionBeginTransaction);
        if (z) {
            fragmentTransactionBeginTransaction.commitNowAllowingStateLoss();
        } else {
            fragmentTransactionBeginTransaction.commitNow();
        }
    }

    public static void commitNow$default(FragmentManager fragmentManager, boolean z, e74 e74Var, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        y45.j(fragmentManager, "$this$commitNow");
        y45.j(e74Var, TtmlNode.TAG_BODY);
        FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager.beginTransaction();
        y45.i(fragmentTransactionBeginTransaction, "beginTransaction()");
        e74Var.invoke(fragmentTransactionBeginTransaction);
        if (z) {
            fragmentTransactionBeginTransaction.commitNowAllowingStateLoss();
        } else {
            fragmentTransactionBeginTransaction.commitNow();
        }
    }

    public static final void transaction(FragmentManager fragmentManager, boolean z, boolean z2, e74 e74Var) {
        y45.j(fragmentManager, "$this$transaction");
        y45.j(e74Var, TtmlNode.TAG_BODY);
        FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager.beginTransaction();
        y45.i(fragmentTransactionBeginTransaction, "beginTransaction()");
        e74Var.invoke(fragmentTransactionBeginTransaction);
        if (z) {
            if (z2) {
                fragmentTransactionBeginTransaction.commitNowAllowingStateLoss();
                return;
            } else {
                fragmentTransactionBeginTransaction.commitNow();
                return;
            }
        }
        if (z2) {
            fragmentTransactionBeginTransaction.commitAllowingStateLoss();
        } else {
            fragmentTransactionBeginTransaction.commit();
        }
    }

    public static void transaction$default(FragmentManager fragmentManager, boolean z, boolean z2, e74 e74Var, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = false;
        }
        y45.j(fragmentManager, "$this$transaction");
        y45.j(e74Var, TtmlNode.TAG_BODY);
        FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager.beginTransaction();
        y45.i(fragmentTransactionBeginTransaction, "beginTransaction()");
        e74Var.invoke(fragmentTransactionBeginTransaction);
        if (z) {
            if (z2) {
                fragmentTransactionBeginTransaction.commitNowAllowingStateLoss();
                return;
            } else {
                fragmentTransactionBeginTransaction.commitNow();
                return;
            }
        }
        if (z2) {
            fragmentTransactionBeginTransaction.commitAllowingStateLoss();
        } else {
            fragmentTransactionBeginTransaction.commit();
        }
    }
}
