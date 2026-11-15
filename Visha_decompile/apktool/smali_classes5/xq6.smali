.class public final Lxq6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lxq6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lxq6;

    invoke-direct {v0}, Lxq6;-><init>()V

    sput-object v0, Lxq6;->a:Lxq6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/Interceptor$Chain;Lokhttp3/Request;I)V
    .locals 1

    const-string v0, "chain"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildRequest"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lxq6;->b(Lokhttp3/Interceptor$Chain;)Ljz6;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p2, p3}, Ljz6;->a(Lokhttp3/Request;I)V

    :cond_0
    return-void
.end method

.method public final b(Lokhttp3/Interceptor$Chain;)Ljz6;
    .locals 1

    sget-object p0, Ldr8;->a:Ldr8;

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->call()Lokhttp3/Call;

    move-result-object p1

    const-string v0, "chain.call()"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-virtual {p0, p1, v0}, Ldr8;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljz6;

    if-eqz p1, :cond_0

    check-cast p0, Ljz6;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
