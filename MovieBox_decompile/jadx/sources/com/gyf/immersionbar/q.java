package com.gyf.immersionbar;

import android.app.Activity;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.fragment.app.FragmentActivity;
import java.util.HashMap;
import java.util.Map;

class q implements Handler.Callback {

    private final String f32303a;

    private final String f32304b;

    private final Handler f32305c;

    private final Map f32306d;

    private final Map f32307e;

    private final Map f32308f;

    private final Map f32309g;

    private static class b {

        private static final q f32310a = new q();
    }

    private static void a(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }

    private o g(FragmentManager fragmentManager, String str) {
        return h(fragmentManager, str, false);
    }

    private o h(FragmentManager fragmentManager, String str, boolean z10) {
        o oVar = (o) fragmentManager.findFragmentByTag(str);
        if (oVar == null && (oVar = (o) this.f32306d.get(fragmentManager)) == null) {
            if (z10) {
                return null;
            }
            if (Build.VERSION.SDK_INT >= 26) {
                for (Fragment fragment : fragmentManager.getFragments()) {
                    if (fragment instanceof o) {
                        String tag = fragment.getTag();
                        if (tag == null) {
                            fragmentManager.beginTransaction().remove(fragment).commitAllowingStateLoss();
                        } else if (tag.contains(".tag.notOnly.")) {
                            fragmentManager.beginTransaction().remove(fragment).commitAllowingStateLoss();
                        }
                    }
                }
            }
            oVar = new o();
            this.f32306d.put(fragmentManager, oVar);
            fragmentManager.beginTransaction().add(oVar, str).commitAllowingStateLoss();
            this.f32305c.obtainMessage(1, fragmentManager).sendToTarget();
        }
        if (!z10) {
            return oVar;
        }
        if (this.f32308f.get(str) == null) {
            this.f32308f.put(str, oVar);
            fragmentManager.beginTransaction().remove(oVar).commitAllowingStateLoss();
            this.f32305c.obtainMessage(3, str).sendToTarget();
        }
        return null;
    }

    static q i() {
        return b.f32310a;
    }

    private SupportRequestBarManagerFragment j(androidx.fragment.app.FragmentManager fragmentManager, String str) {
        return k(fragmentManager, str, false);
    }

    private SupportRequestBarManagerFragment k(androidx.fragment.app.FragmentManager fragmentManager, String str, boolean z10) {
        SupportRequestBarManagerFragment supportRequestBarManagerFragment = (SupportRequestBarManagerFragment) fragmentManager.k0(str);
        if (supportRequestBarManagerFragment == null && (supportRequestBarManagerFragment = (SupportRequestBarManagerFragment) this.f32307e.get(fragmentManager)) == null) {
            if (z10) {
                return null;
            }
            for (androidx.fragment.app.Fragment fragment : fragmentManager.y0()) {
                if (fragment instanceof SupportRequestBarManagerFragment) {
                    String tag = fragment.getTag();
                    if (tag == null) {
                        fragmentManager.p().r(fragment).j();
                    } else if (tag.contains(".tag.notOnly.")) {
                        fragmentManager.p().r(fragment).j();
                    }
                }
            }
            supportRequestBarManagerFragment = new SupportRequestBarManagerFragment();
            this.f32307e.put(fragmentManager, supportRequestBarManagerFragment);
            fragmentManager.p().e(supportRequestBarManagerFragment, str).j();
            this.f32305c.obtainMessage(2, fragmentManager).sendToTarget();
        }
        if (!z10) {
            return supportRequestBarManagerFragment;
        }
        if (this.f32309g.get(str) == null) {
            this.f32309g.put(str, supportRequestBarManagerFragment);
            fragmentManager.p().r(supportRequestBarManagerFragment).j();
            this.f32305c.obtainMessage(4, str).sendToTarget();
        }
        return null;
    }

    public void b(Activity activity, Dialog dialog, boolean z10) {
        if (activity == null || dialog == null) {
            return;
        }
        String str = this.f32303a + dialog.getClass().getName();
        if (!z10) {
            str = str + System.identityHashCode(dialog) + ".tag.notOnly.";
        }
        if (activity instanceof FragmentActivity) {
            k(((FragmentActivity) activity).getSupportFragmentManager(), str, true);
        } else {
            h(activity.getFragmentManager(), str, true);
        }
    }

    public ImmersionBar c(Activity activity, Dialog dialog, boolean z10) {
        a(activity, "activity is null");
        a(dialog, "dialog is null");
        String str = this.f32303a + dialog.getClass().getName();
        if (!z10) {
            str = str + System.identityHashCode(dialog) + ".tag.notOnly.";
        }
        return activity instanceof FragmentActivity ? j(((FragmentActivity) activity).getSupportFragmentManager(), str).V(activity, dialog) : g(activity.getFragmentManager(), str).a(activity, dialog);
    }

    public ImmersionBar d(Activity activity, boolean z10) {
        a(activity, "activity is null");
        String str = this.f32303a + activity.getClass().getName();
        if (!z10) {
            str = str + System.identityHashCode(activity) + ".tag.notOnly.";
        }
        return activity instanceof FragmentActivity ? j(((FragmentActivity) activity).getSupportFragmentManager(), str).W(activity) : g(activity.getFragmentManager(), str).b(activity);
    }

    public ImmersionBar e(Fragment fragment, boolean z10) {
        a(fragment, "fragment is null");
        a(fragment.getActivity(), "fragment.getActivity() is null");
        if (fragment instanceof DialogFragment) {
            a(((DialogFragment) fragment).getDialog(), "fragment.getDialog() is null");
        }
        String str = this.f32303a + fragment.getClass().getName();
        if (!z10) {
            str = str + System.identityHashCode(fragment) + ".tag.notOnly.";
        }
        return g(fragment.getChildFragmentManager(), str).b(fragment);
    }

    public ImmersionBar f(androidx.fragment.app.Fragment fragment, boolean z10) {
        a(fragment, "fragment is null");
        a(fragment.getActivity(), "fragment.getActivity() is null");
        if (fragment instanceof androidx.fragment.app.DialogFragment) {
            a(((androidx.fragment.app.DialogFragment) fragment).getDialog(), "fragment.getDialog() is null");
        }
        String str = this.f32303a + fragment.getClass().getName();
        if (!z10) {
            str = str + System.identityHashCode(fragment) + ".tag.notOnly.";
        }
        return j(fragment.getChildFragmentManager(), str).W(fragment);
    }

    @Override
    public boolean handleMessage(Message message) {
        int i10 = message.what;
        if (i10 == 1) {
            this.f32306d.remove((FragmentManager) message.obj);
            return true;
        }
        if (i10 == 2) {
            this.f32307e.remove((androidx.fragment.app.FragmentManager) message.obj);
            return true;
        }
        if (i10 == 3) {
            this.f32308f.remove((String) message.obj);
            return true;
        }
        if (i10 != 4) {
            return false;
        }
        this.f32309g.remove((String) message.obj);
        return true;
    }

    private q() {
        this.f32303a = ImmersionBar.class.getName() + ".";
        this.f32304b = ".tag.notOnly.";
        this.f32306d = new HashMap();
        this.f32307e = new HashMap();
        this.f32308f = new HashMap();
        this.f32309g = new HashMap();
        this.f32305c = new Handler(Looper.getMainLooper(), this);
    }
}
