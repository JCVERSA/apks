.class public final Llt4$c;
.super Llt4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llt4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final d:Llq0;


# direct methods
.method public constructor <init>(Let8;Lokhttp3/Call$Factory;Lsi1;Llq0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Llt4;-><init>(Let8;Lokhttp3/Call$Factory;Lsi1;)V

    iput-object p4, p0, Llt4$c;->d:Llq0;

    return-void
.end method


# virtual methods
.method public c(Ljq0;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Llt4$c;->d:Llq0;

    invoke-interface {p0, p1}, Llq0;->adapt(Ljq0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljq0;

    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    aget-object p1, p2, p1

    check-cast p1, Lwh1;

    :try_start_0
    invoke-static {p0, p1}, Lretrofit2/KotlinExtensions;->c(Ljq0;Lwh1;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0, p1}, Lretrofit2/KotlinExtensions;->e(Ljava/lang/Throwable;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
