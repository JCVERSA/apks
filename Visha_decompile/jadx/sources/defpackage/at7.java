package defpackage;

import com.transsion.onlinevideo.R;

public abstract class at7 {
    public static String a(Integer num, Integer num2) {
        if (num == null || num.intValue() == 0) {
            return null;
        }
        return se.a().getResources().getString(num2.intValue() == 1 ? R.string.visha_complete_set_of_episodes : R.string.visha_update_to_episodes, num);
    }
}
