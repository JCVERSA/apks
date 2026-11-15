package yf;

public final class b implements b8.b {
    @Override
    public String a(Thread thread) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Thread: name: ");
        sb2.append(thread != null ? thread.getName() : null);
        sb2.append(" , threadId: ");
        sb2.append(thread != null ? Long.valueOf(thread.getId()) : null);
        return sb2.toString();
    }
}
