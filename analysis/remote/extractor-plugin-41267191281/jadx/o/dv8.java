package o;

import android.content.Context;
import com.snaptube.extractor.pluginlib.models.Format;
import com.snaptube.premium.extractor.BaseVideoUrlExtractor;
import java.util.ArrayList;
import java.util.List;

public abstract class dv8 extends BaseVideoUrlExtractor {
    public lg7 g;

    public dv8(Context context, String str) {
        super(context, str);
    }

    public boolean C(Format format) {
        return this.g.isFormatNeedMux(format);
    }

    public boolean D(ClassLoader classLoader) {
        return this.g.h(classLoader);
    }

    public Format[] E(Format format, List list) {
        return new Format[]{format, this.g.getMuxAudioFormat(format, list)};
    }

    @Override
    public dc3 h() {
        lg7 lg7Var = new lg7(i());
        this.g = lg7Var;
        return lg7Var;
    }

    @Override
    public List v() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new t66());
        arrayList.add(new dd2());
        arrayList.add(new id2(i()));
        arrayList.add(new ko3());
        return arrayList;
    }
}
