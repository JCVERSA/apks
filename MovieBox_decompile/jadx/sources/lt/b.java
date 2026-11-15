package lt;

import android.view.ViewGroup;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.transsion.moviedetailapi.bean.DubsInfo;
import com.transsion.subtitle.helper.d;
import java.util.List;

public interface b {
    SimpleSubtitleView a();

    void b(boolean z10);

    void c(String str);

    SimpleSubtitleView d();

    void e(ht.a aVar, ht.a aVar2, boolean z10);

    void f(boolean z10);

    boolean g();

    ViewGroup getSubtitleViewGroup();

    void h(DubsInfo dubsInfo);

    d i();

    List j();

    boolean k();

    void l(ht.a aVar, long j10);
}
