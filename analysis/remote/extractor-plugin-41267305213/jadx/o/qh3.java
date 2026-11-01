package o;

import com.snaptube.extractor.pluginlib.models.ExtractResult;
import com.snaptube.extractor.pluginlib.models.PageContext;
import org.json.JSONObject;

public interface qh3 extends dc3 {
    @Override
    ExtractResult extract(PageContext pageContext, df3 df3Var) throws Exception;

    @Override
    JSONObject getInjectionCode(String str) throws Exception;

    @Override
    boolean hostMatches(String str);

    @Override
    boolean isJavaScriptControlled(String str);

    @Override
    boolean isUrlSupported(String str);

    @Override
    boolean test(String str);
}
