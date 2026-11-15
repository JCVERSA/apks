package defpackage;

import com.transsion.http.HttpRequestTask;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

public class u2d {
    public yc8 a = ht4.b();
    public List b = Collections.synchronizedList(new LinkedList());

    public void a(ct8 ct8Var, dv4 dv4Var) {
        HttpRequestTask httpRequestTask = new HttpRequestTask(ct8Var, dv4Var);
        if (ct8Var.c().m() != null) {
            this.b.add(httpRequestTask);
        }
        this.a.a(httpRequestTask);
    }
}
