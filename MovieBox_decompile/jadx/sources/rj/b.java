package rj;

import com.cloud.tmc.integration.event.EventConstants;
import java.util.LinkedHashMap;
import wj.d;

public final class b implements d {
    @Override
    public void a() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, "member_guide_dialog_click_close");
        com.transsion.baselib.helper.a.f42121a.b("download_intercept", linkedHashMap);
    }

    @Override
    public void b() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, "download_page_manager_btn_click");
        com.transsion.baselib.helper.a.f42121a.b("download_intercept", linkedHashMap);
    }

    @Override
    public void c() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, "member_guide_dialog_show");
        com.transsion.baselib.helper.a.f42121a.b("download_intercept", linkedHashMap);
    }

    @Override
    public void d() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, "member_guide_dialog_click_get_ad");
        com.transsion.baselib.helper.a.f42121a.b("download_intercept", linkedHashMap);
    }

    @Override
    public void e() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, "download_task_dialog_resume_all_click");
        com.transsion.baselib.helper.a.f42121a.b("download_intercept", linkedHashMap);
    }

    @Override
    public void f() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, "download_task_dialog_pause_all_click");
        com.transsion.baselib.helper.a.f42121a.b("download_intercept", linkedHashMap);
    }

    @Override
    public void g() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, "download_task_dialog_at_a_time_click");
        com.transsion.baselib.helper.a.f42121a.b("download_intercept", linkedHashMap);
    }

    @Override
    public void h() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, "get_ad_free_btn_click");
        com.transsion.baselib.helper.a.f42121a.b("download_intercept", linkedHashMap);
    }
}
