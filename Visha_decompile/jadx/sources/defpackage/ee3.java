package defpackage;

import android.text.TextUtils;
import com.transsion.push.bean.PushMessage;
import com.transsion.push.utils.PushLogUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public final class ee3 {
    public final CopyOnWriteArrayList a;

    public static class b {
        public final PushMessage a;
        public final long b;

        public b(PushMessage pushMessage, long j) {
            this.a = pushMessage;
            this.b = j;
        }

        public boolean a(long j) {
            return this.a.getMsgTtl() > 0 && j - this.b > ((long) this.a.getMsgTtl()) * 1000;
        }

        public boolean b(int i, String str) {
            if (this.a.eventType != i) {
                return false;
            }
            return TextUtils.isEmpty(str) ? TextUtils.isEmpty(this.a.eventParams) : str.equals(this.a.eventParams);
        }
    }

    public static final class c {
        public static final ee3 a = new ee3();
    }

    public static ee3 c() {
        return c.a;
    }

    public void a(PushMessage pushMessage) {
        if (pushMessage == null || pushMessage.eventType <= 0) {
            return;
        }
        b();
        this.a.add(new b(pushMessage, System.currentTimeMillis()));
        PushLogUtils.LOG.g("EventMessageManager addEventMessage, eventType:" + pushMessage.eventType + ", eventParams:" + pushMessage.eventParams + ", msgId:" + pushMessage.messageId);
    }

    public final void b() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        for (b bVar : this.a) {
            if (bVar.a(jCurrentTimeMillis)) {
                this.a.remove(bVar);
                PushLogUtils.LOG.g("EventMessageManager cleanExpired, msgId:" + bVar.a.messageId);
            }
        }
    }

    public List d(int i, String str) {
        b();
        ArrayList arrayList = new ArrayList();
        for (b bVar : this.a) {
            if (bVar.b(i, str)) {
                this.a.remove(bVar);
                arrayList.add(bVar.a);
                PushLogUtils.LOG.g("EventMessageManager triggerEvent matched, eventType:" + i + ", msgId:" + bVar.a.messageId);
            }
        }
        if (arrayList.isEmpty()) {
            PushLogUtils.LOG.g("EventMessageManager triggerEvent no match, eventType:" + i + ", eventParams:" + str);
        }
        return arrayList;
    }

    public ee3() {
        this.a = new CopyOnWriteArrayList();
    }
}
