package defpackage;

import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;

public abstract class vec implements pw9 {
    public CountDownLatch a = new CountDownLatch(e());

    @Override
    public void a() {
        this.a.countDown();
    }

    @Override
    public void d() {
        try {
            this.a.await();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List dependencies() {
        return null;
    }

    @Override
    public int e() {
        List listDependencies = dependencies();
        if (listDependencies == null) {
            return 0;
        }
        return listDependencies.size();
    }

    @Override
    public int f() {
        return 0;
    }

    @Override
    public Executor g() {
        return df3.a;
    }
}
