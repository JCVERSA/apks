package com.yandex.varioqub.analyticadapter;

import com.yandex.varioqub.analyticadapter.data.ConfigData;
import java.util.Set;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J\u001d\u0010\n\u001a\u00020\u00042\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H&¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fH&¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/yandex/varioqub/analyticadapter/VarioqubConfigReporter;", "", "", "experiments", "Lzfb;", "setExperiments", "(Ljava/lang/String;)V", "", "", "triggeredTestIds", "setTriggeredTestIds", "(Ljava/util/Set;)V", "Lcom/yandex/varioqub/analyticadapter/data/ConfigData;", "configData", "reportConfigChanged", "(Lcom/yandex/varioqub/analyticadapter/data/ConfigData;)V", "analytic-adapter_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
public interface VarioqubConfigReporter {
    void reportConfigChanged(ConfigData configData);

    void setExperiments(String experiments);

    void setTriggeredTestIds(Set<Long> triggeredTestIds);
}
