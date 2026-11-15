package defpackage;

import android.util.Log;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.transsion.playercommon.R;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.fragments.BaseFragment;
import java.util.List;

public abstract class a64 {
    public static boolean a = true;

    public static boolean a(BaseActivity baseActivity) {
        BaseFragment baseFragment;
        if (baseActivity == null) {
            return false;
        }
        try {
            FragmentManager supportFragmentManager = baseActivity.getSupportFragmentManager();
            BaseFragment baseFragment2 = (BaseFragment) supportFragmentManager.getPrimaryNavigationFragment();
            if (baseFragment2 == null) {
                return false;
            }
            if (baseFragment2.onBackPressed()) {
                return true;
            }
            String str = baseFragment2.mPreviousFragmentTag;
            if (str == null || (baseFragment = (BaseFragment) supportFragmentManager.findFragmentByTag(str)) == null) {
                return false;
            }
            try {
                FragmentTransaction fragmentTransactionBeginTransaction = supportFragmentManager.beginTransaction();
                fragmentTransactionBeginTransaction.remove(baseFragment2);
                fragmentTransactionBeginTransaction.commitAllowingStateLoss();
            } catch (Exception e) {
                e.printStackTrace();
            }
            o(baseFragment, false, baseFragment.needAnimation(), true);
            e(baseActivity);
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static void b(FragmentManager fragmentManager, BaseFragment... baseFragmentArr) {
        if (fragmentManager == null) {
            return;
        }
        try {
            List<Fragment> fragments = fragmentManager.getFragments();
            if (fragments != null && baseFragmentArr != null) {
                int size = fragments.size();
                FragmentTransaction fragmentTransactionBeginTransaction = null;
                for (int i = 0; i < size; i++) {
                    Fragment fragment = fragments.get(i);
                    for (BaseFragment baseFragment : baseFragmentArr) {
                        if (fragment == baseFragment) {
                            fragment = null;
                            break;
                        }
                    }
                    if (fragment instanceof BaseFragment) {
                        if (fragmentTransactionBeginTransaction == null) {
                            fragmentTransactionBeginTransaction = fragmentManager.beginTransaction();
                        }
                        fragmentTransactionBeginTransaction.remove(fragment);
                        Log.i("FragmentsUtils", "remove inactive fragments:" + fragment);
                    }
                }
                if (fragmentTransactionBeginTransaction != null) {
                    fragmentTransactionBeginTransaction.commitNowAllowingStateLoss();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void c(BaseActivity baseActivity) {
        if (baseActivity == null) {
            return;
        }
        FragmentManager supportFragmentManager = baseActivity.getSupportFragmentManager();
        DialogFragment dialogFragment = (DialogFragment) supportFragmentManager.findFragmentByTag("detail_dialog_fragment_tag");
        if (dialogFragment != null) {
            Log.i("FragmentsUtils", "auot playnext video,dimiss the dialog");
            dialogFragment.dismissAllowingStateLoss();
        }
        DialogFragment dialogFragment2 = (DialogFragment) supportFragmentManager.findFragmentByTag("setting_lis_dialog_fragment_tag");
        if (dialogFragment2 != null) {
            Log.i("FragmentsUtils", "auot playnext video,dimiss the setting list dialog");
            dialogFragment2.dismissAllowingStateLoss();
        }
        DialogFragment dialogFragment3 = (DialogFragment) supportFragmentManager.findFragmentByTag("play_list_dialog_tag");
        if (dialogFragment3 != null) {
            dialogFragment3.dismissAllowingStateLoss();
        }
        DialogFragment dialogFragment4 = (DialogFragment) supportFragmentManager.findFragmentByTag("video_play_timer_custom_tag");
        if (dialogFragment4 != null) {
            dialogFragment4.dismissAllowingStateLoss();
        }
        DialogFragment dialogFragment5 = (DialogFragment) supportFragmentManager.findFragmentByTag("play_speed_list_dialog_tag");
        if (dialogFragment5 != null) {
            dialogFragment5.dismissAllowingStateLoss();
        }
        DialogFragment dialogFragment6 = (DialogFragment) supportFragmentManager.findFragmentByTag("subtitle_dialog_tag");
        if (dialogFragment6 != null) {
            dialogFragment6.dismissAllowingStateLoss();
        }
        DialogFragment dialogFragment7 = (DialogFragment) supportFragmentManager.findFragmentByTag("play_list_tag");
        if (dialogFragment7 != null) {
            dialogFragment7.dismissAllowingStateLoss();
        }
        DialogFragment dialogFragment8 = (DialogFragment) supportFragmentManager.findFragmentByTag("search_subtitle_dialog_tag");
        if (dialogFragment8 != null) {
            dialogFragment8.dismissAllowingStateLoss();
        }
    }

    public static void d(BaseActivity baseActivity) {
        DialogFragment dialogFragment;
        if (baseActivity == null || (dialogFragment = (DialogFragment) baseActivity.getSupportFragmentManager().findFragmentByTag("detail_dialog_fragment_tag")) == null) {
            return;
        }
        Log.i("FragmentsUtils", "auot playnext video,dimiss the dialog");
        dialogFragment.dismissAllowingStateLoss();
    }

    public static void e(BaseActivity baseActivity) {
        if (baseActivity != null) {
            baseActivity.onBackNavigationStateChanged();
        }
    }

    public static void f(BaseActivity baseActivity) {
        try {
            boolean zH = h(baseActivity);
            while (zH) {
                zH = h(baseActivity);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static boolean g(BaseActivity baseActivity) {
        try {
            if (baseActivity == null) {
                Log.e("FragmentsUtils", "removeMainFragment failed: activity is null");
                return false;
            }
            FragmentManager supportFragmentManager = baseActivity.getSupportFragmentManager();
            BaseFragment baseFragment = (BaseFragment) supportFragmentManager.getPrimaryNavigationFragment();
            if (baseFragment == null) {
                Log.w("FragmentsUtils", "removeMainFragment aborted: no primary navigation fragment");
                return false;
            }
            try {
                FragmentTransaction fragmentTransactionBeginTransaction = supportFragmentManager.beginTransaction();
                fragmentTransactionBeginTransaction.remove(baseFragment);
                fragmentTransactionBeginTransaction.commitNowAllowingStateLoss();
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                Log.e("FragmentsUtils", "Failed to commit transaction: " + e.getMessage());
                return true;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            Log.e("FragmentsUtils", "Failed to remove fragment: " + e2.getMessage());
            return false;
        }
    }

    public static boolean h(BaseActivity baseActivity) {
        BaseFragment baseFragment;
        if (baseActivity == null) {
            return false;
        }
        try {
            FragmentManager supportFragmentManager = baseActivity.getSupportFragmentManager();
            BaseFragment baseFragment2 = (BaseFragment) supportFragmentManager.getPrimaryNavigationFragment();
            if (baseFragment2 == null) {
                return false;
            }
            baseFragment2.onBackPressed();
            String str = baseFragment2.mPreviousFragmentTag;
            if (str == null || (baseFragment = (BaseFragment) supportFragmentManager.findFragmentByTag(str)) == null) {
                return false;
            }
            try {
                FragmentTransaction fragmentTransactionBeginTransaction = supportFragmentManager.beginTransaction();
                fragmentTransactionBeginTransaction.remove(baseFragment2);
                fragmentTransactionBeginTransaction.commitAllowingStateLoss();
            } catch (Exception e) {
                e.printStackTrace();
            }
            o(baseFragment, false, false, true);
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static void i(BaseActivity baseActivity, Fragment fragment, boolean z) {
        j(baseActivity, R.id.fragment_content, fragment, z);
    }

    public static void j(BaseActivity baseActivity, int i, Fragment fragment, boolean z) {
        if (baseActivity == null || fragment == null) {
            Log.e("FragmentsUtils", "replaceFragment : baseActivity is null");
            return;
        }
        try {
            FragmentTransaction fragmentTransactionBeginTransactionAnimation = z ? baseActivity.beginTransactionAnimation() : baseActivity.beginTransaction();
            fragmentTransactionBeginTransactionAnimation.replace(i, fragment, ((BaseFragment) fragment).getFragmentTag());
            fragmentTransactionBeginTransactionAnimation.setPrimaryNavigationFragment(fragment);
            fragmentTransactionBeginTransactionAnimation.commitNowAllowingStateLoss();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void k(BaseFragment baseFragment, boolean z, boolean z2, boolean z3) {
        if (baseFragment == null) {
            return;
        }
        try {
            BaseActivity baseActivity = baseFragment.baseActivity();
            if (baseActivity == null) {
                Log.e("FragmentsUtils", "===========  ERROR: BaseActivity is NULL ===========");
                return;
            }
            FragmentManager supportFragmentManager = baseActivity.getSupportFragmentManager();
            FragmentTransaction fragmentTransactionBeginTransactionAnimation = z2 ? baseActivity.beginTransactionAnimation() : supportFragmentManager.beginTransaction();
            if (z3 && z2) {
                fragmentTransactionBeginTransactionAnimation = baseActivity.beginTransactionBackAnimation();
            }
            BaseFragment baseFragment2 = (BaseFragment) supportFragmentManager.getPrimaryNavigationFragment();
            if (baseFragment2 == null) {
                return;
            }
            BaseFragment baseFragment3 = (BaseFragment) supportFragmentManager.findFragmentByTag(baseFragment2.mPreviousFragmentTag);
            fragmentTransactionBeginTransactionAnimation.remove(baseFragment2);
            Log.d("FragmentsUtils", "replace::" + baseFragment2 + ", ::" + baseFragment);
            if (baseFragment.isAdded()) {
                fragmentTransactionBeginTransactionAnimation.show(baseFragment);
                if (a) {
                    Log.d("FragmentsUtils", "isAdded::" + baseFragment2 + ", ::" + baseFragment);
                }
            } else {
                int fragmentContentId = baseActivity.getFragmentContentId();
                if (fragmentContentId == 0) {
                    fragmentContentId = R.id.fragment_content;
                }
                fragmentTransactionBeginTransactionAnimation.add(fragmentContentId, baseFragment, baseFragment.getFragmentTag());
                if (a) {
                    Log.d("FragmentsUtils", "replace::" + baseFragment);
                }
            }
            if (z && baseFragment2 != baseFragment) {
                baseFragment.mPreviousFragmentTag = baseFragment3.getFragmentTag();
            }
            baseActivity.triggerMenuSwitch(baseFragment.getActivityMenuSwitchFlag());
            fragmentTransactionBeginTransactionAnimation.setPrimaryNavigationFragment(baseFragment);
            fragmentTransactionBeginTransactionAnimation.commitNowAllowingStateLoss();
            e(baseActivity);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void l(BaseFragment baseFragment) {
        m(baseFragment, false);
    }

    public static void m(BaseFragment baseFragment, boolean z) {
        n(baseFragment, z, false);
    }

    public static void n(BaseFragment baseFragment, boolean z, boolean z2) {
        o(baseFragment, z, z2, false);
    }

    public static void o(BaseFragment baseFragment, boolean z, boolean z2, boolean z3) {
        if (baseFragment == null) {
            return;
        }
        try {
            BaseActivity baseActivity = baseFragment.baseActivity();
            if (baseActivity == null) {
                Log.e("FragmentsUtils", "===========  ERROR: BaseActivity is NULL ===========");
                return;
            }
            FragmentManager supportFragmentManager = baseActivity.getSupportFragmentManager();
            FragmentTransaction fragmentTransactionBeginTransactionAnimation = z2 ? baseActivity.beginTransactionAnimation() : supportFragmentManager.beginTransaction();
            if (z3 && z2) {
                fragmentTransactionBeginTransactionAnimation = baseActivity.beginTransactionBackAnimation();
            }
            BaseFragment baseFragment2 = (BaseFragment) supportFragmentManager.getPrimaryNavigationFragment();
            if (baseFragment2 != null) {
                fragmentTransactionBeginTransactionAnimation.hide(baseFragment2);
            }
            if (baseFragment.isAdded()) {
                fragmentTransactionBeginTransactionAnimation.show(baseFragment);
                if (a) {
                    Log.d("FragmentsUtils", "isAdded::" + baseFragment2 + ", ::" + baseFragment);
                }
            } else {
                int fragmentContentId = baseActivity.getFragmentContentId();
                if (fragmentContentId == 0) {
                    fragmentContentId = R.id.fragment_content;
                }
                fragmentTransactionBeginTransactionAnimation.add(fragmentContentId, baseFragment, baseFragment.getFragmentTag());
                if (a) {
                    Log.d("FragmentsUtils", "replace::" + baseFragment);
                }
            }
            if (z && baseFragment2 != null && baseFragment2 != baseFragment) {
                baseFragment.mPreviousFragmentTag = baseFragment2.getFragmentTag();
            }
            baseActivity.triggerMenuSwitch(baseFragment.getActivityMenuSwitchFlag());
            fragmentTransactionBeginTransactionAnimation.setPrimaryNavigationFragment(baseFragment);
            fragmentTransactionBeginTransactionAnimation.commitNowAllowingStateLoss();
            e(baseActivity);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
