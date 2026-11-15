.class public Lh0d;
.super Lf0d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lfreemarker/core/t1;)V
    .locals 0

    invoke-direct {p0, p1}, Lf0d;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    :try_start_0
    check-cast p1, Lfreemarker/core/t1;

    invoke-virtual {p1}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "{Error getting canonical form}"

    return-object p0
.end method
