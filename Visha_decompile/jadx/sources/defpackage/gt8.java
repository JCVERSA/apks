package defpackage;

import android.app.Activity;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.fragment.app.FragmentActivity;
import com.alibaba.android.arouter.utils.Consts;
import com.transsion.sysbar.ImmersionBar;
import com.transsion.sysbar.RequestBarManagerFragment;
import com.transsion.sysbar.SupportRequestBarManagerFragment;
import java.util.HashMap;
import java.util.Map;

public class gt8 implements Handler.Callback {
    public final String b;
    public final String c;
    public final Handler d;
    public final Map e;
    public final Map f;
    public final Map g;
    public final Map h;

    public static class a {
        public static final gt8 a = new gt8();
    }

    public static void a(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }

    public static gt8 k() {
        return a.a;
    }

    public void b(Activity activity, Dialog dialog, boolean z) {
        if (activity == null || dialog == null) {
            return;
        }
        String str = this.b + dialog.getClass().getName();
        if (!z) {
            str = str + System.identityHashCode(dialog) + ".tag.notOnly.";
        }
        if (activity instanceof FragmentActivity) {
            m(((FragmentActivity) activity).getSupportFragmentManager(), str, true);
        } else {
            j(activity.getFragmentManager(), str, true);
        }
    }

    public void c(Fragment fragment, boolean z) {
        if (fragment == null) {
            return;
        }
        String str = this.b + fragment.getClass().getName();
        if (!z) {
            str = str + System.identityHashCode(fragment) + ".tag.notOnly.";
        }
        j(fragment.getChildFragmentManager(), str, true);
    }

    public void d(androidx.fragment.app.Fragment fragment, boolean z) {
        if (fragment == null) {
            return;
        }
        String str = this.b + fragment.getClass().getName();
        if (!z) {
            str = str + System.identityHashCode(fragment) + ".tag.notOnly.";
        }
        m(fragment.getChildFragmentManager(), str, true);
    }

    public ImmersionBar e(Activity activity, Dialog dialog, boolean z) {
        a(activity, "activity is null");
        a(dialog, "dialog is null");
        String str = this.b + dialog.getClass().getName();
        if (!z) {
            str = str + System.identityHashCode(dialog) + ".tag.notOnly.";
        }
        return activity instanceof FragmentActivity ? l(((FragmentActivity) activity).getSupportFragmentManager(), str).u(activity, dialog) : i(activity.getFragmentManager(), str).a(activity, dialog);
    }

    public ImmersionBar f(Activity activity, boolean z) {
        a(activity, "activity is null");
        String str = this.b + activity.getClass().getName();
        if (!z) {
            str = str + System.identityHashCode(activity) + ".tag.notOnly.";
        }
        return activity instanceof FragmentActivity ? l(((FragmentActivity) activity).getSupportFragmentManager(), str).v(activity) : i(activity.getFragmentManager(), str).b(activity);
    }

    public ImmersionBar g(Fragment fragment, boolean z) {
        a(fragment, "fragment is null");
        a(fragment.getActivity(), "fragment.getActivity() is null");
        if (fragment instanceof DialogFragment) {
            a(((DialogFragment) fragment).getDialog(), "fragment.getDialog() is null");
        }
        String str = this.b + fragment.getClass().getName();
        if (!z) {
            str = str + System.identityHashCode(fragment) + ".tag.notOnly.";
        }
        return i(fragment.getChildFragmentManager(), str).b(fragment);
    }

    public ImmersionBar h(androidx.fragment.app.Fragment fragment, boolean z) {
        a(fragment, "fragment is null");
        a(fragment.getActivity(), "fragment.getActivity() is null");
        if (fragment instanceof androidx.fragment.app.DialogFragment) {
            a(((androidx.fragment.app.DialogFragment) fragment).getDialog(), "fragment.getDialog() is null");
        }
        String str = this.b + fragment.getClass().getName();
        if (!z) {
            str = str + System.identityHashCode(fragment) + ".tag.notOnly.";
        }
        return l(fragment.getChildFragmentManager(), str).v(fragment);
    }

    @Override
    public boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 1) {
            this.e.remove((FragmentManager) message.obj);
            return true;
        }
        if (i == 2) {
            this.f.remove((androidx.fragment.app.FragmentManager) message.obj);
            return true;
        }
        if (i == 3) {
            this.g.remove((String) message.obj);
            return true;
        }
        if (i != 4) {
            return false;
        }
        this.h.remove((String) message.obj);
        return true;
    }

    public final RequestBarManagerFragment i(FragmentManager fragmentManager, String str) {
        return j(fragmentManager, str, false);
    }

    public final RequestBarManagerFragment j(FragmentManager fragmentManager, String str, boolean z) {
        RequestBarManagerFragment requestBarManagerFragment = (RequestBarManagerFragment) fragmentManager.findFragmentByTag(str);
        if (requestBarManagerFragment == null && (requestBarManagerFragment = (RequestBarManagerFragment) this.e.get(fragmentManager)) == null) {
            if (z) {
                return null;
            }
            for (Fragment fragment : fragmentManager.getFragments()) {
                if (fragment instanceof RequestBarManagerFragment) {
                    String tag = fragment.getTag();
                    if (tag == null) {
                        fragmentManager.beginTransaction().remove(fragment).commitAllowingStateLoss();
                    } else if (tag.contains(".tag.notOnly.")) {
                        fragmentManager.beginTransaction().remove(fragment).commitAllowingStateLoss();
                    }
                }
            }
            requestBarManagerFragment = new RequestBarManagerFragment();
            this.e.put(fragmentManager, requestBarManagerFragment);
            fragmentManager.beginTransaction().add(requestBarManagerFragment, str).commitAllowingStateLoss();
            this.d.obtainMessage(1, fragmentManager).sendToTarget();
        }
        if (!z) {
            return requestBarManagerFragment;
        }
        if (this.g.get(str) == null) {
            this.g.put(str, requestBarManagerFragment);
            fragmentManager.beginTransaction().remove(requestBarManagerFragment).commitAllowingStateLoss();
            this.d.obtainMessage(3, str).sendToTarget();
        }
        return null;
    }

    public final SupportRequestBarManagerFragment l(androidx.fragment.app.FragmentManager fragmentManager, String str) {
        return m(fragmentManager, str, false);
    }

    public final SupportRequestBarManagerFragment m(androidx.fragment.app.FragmentManager fragmentManager, String str, boolean z) {
        SupportRequestBarManagerFragment supportRequestBarManagerFragment = (SupportRequestBarManagerFragment) fragmentManager.findFragmentByTag(str);
        if (supportRequestBarManagerFragment == null && (supportRequestBarManagerFragment = (SupportRequestBarManagerFragment) this.f.get(fragmentManager)) == null) {
            if (z) {
                return null;
            }
            for (androidx.fragment.app.Fragment fragment : fragmentManager.getFragments()) {
                if (fragment instanceof SupportRequestBarManagerFragment) {
                    String tag = fragment.getTag();
                    if (tag == null) {
                        fragmentManager.beginTransaction().remove(fragment).commitAllowingStateLoss();
                    } else if (tag.contains(".tag.notOnly.")) {
                        fragmentManager.beginTransaction().remove(fragment).commitAllowingStateLoss();
                    }
                }
            }
            supportRequestBarManagerFragment = new SupportRequestBarManagerFragment();
            this.f.put(fragmentManager, supportRequestBarManagerFragment);
            fragmentManager.beginTransaction().add(supportRequestBarManagerFragment, str).commitAllowingStateLoss();
            this.d.obtainMessage(2, fragmentManager).sendToTarget();
        }
        if (!z) {
            return supportRequestBarManagerFragment;
        }
        if (this.h.get(str) == null) {
            this.h.put(str, supportRequestBarManagerFragment);
            fragmentManager.beginTransaction().remove(supportRequestBarManagerFragment).commitAllowingStateLoss();
            this.d.obtainMessage(4, str).sendToTarget();
        }
        return null;
    }

    public gt8() {
        this.b = ImmersionBar.class.getName() + Consts.DOT;
        this.c = ".tag.notOnly.";
        this.e = new HashMap();
        this.f = new HashMap();
        this.g = new HashMap();
        this.h = new HashMap();
        this.d = new Handler(Looper.getMainLooper(), this);
    }
}
