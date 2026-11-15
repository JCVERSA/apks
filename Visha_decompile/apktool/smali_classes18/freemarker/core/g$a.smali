.class public Lfreemarker/core/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final b:Lfreemarker/core/Environment;

.field public final c:Lfreemarker/core/Environment$Namespace;

.field public final synthetic d:Lfreemarker/core/g;


# direct methods
.method public constructor <init>(Lfreemarker/core/g;Lfreemarker/core/Environment;)V
    .locals 2

    iput-object p1, p0, Lfreemarker/core/g$a;->d:Lfreemarker/core/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lfreemarker/core/g$a;->b:Lfreemarker/core/Environment;

    invoke-static {p1}, Lfreemarker/core/g;->l0(Lfreemarker/core/g;)Lfreemarker/core/t0;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lfreemarker/core/g;->l0(Lfreemarker/core/g;)Lfreemarker/core/t0;

    move-result-object v0

    invoke-virtual {v0, p2}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v0

    instance-of v1, v0, Lfreemarker/core/Environment$Namespace;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lfreemarker/core/NonNamespaceException;

    invoke-static {p1}, Lfreemarker/core/g;->l0(Lfreemarker/core/g;)Lfreemarker/core/t0;

    move-result-object p1

    invoke-direct {p0, p1, v0, p2}, Lfreemarker/core/NonNamespaceException;-><init>(Lfreemarker/core/t0;Lzfa;Lfreemarker/core/Environment;)V

    throw p0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lfreemarker/core/Environment$Namespace;

    iput-object v0, p0, Lfreemarker/core/g$a;->c:Lfreemarker/core/Environment$Namespace;

    return-void
.end method

.method public static synthetic b(Lfreemarker/core/g$a;)Lfreemarker/core/g;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/g$a;->d:Lfreemarker/core/g;

    return-object p0
.end method

.method public static synthetic c(Lfreemarker/core/g$a;)Lfreemarker/core/Environment$Namespace;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/g$a;->c:Lfreemarker/core/Environment$Namespace;

    return-object p0
.end method

.method public static synthetic e(Lfreemarker/core/g$a;)Lfreemarker/core/Environment;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/g$a;->b:Lfreemarker/core/Environment;

    return-object p0
.end method


# virtual methods
.method public h(Ljava/io/Writer;Ljava/util/Map;)Ljava/io/Writer;
    .locals 0

    new-instance p1, Lfreemarker/core/f;

    invoke-direct {p1, p0}, Lfreemarker/core/f;-><init>(Lfreemarker/core/g$a;)V

    return-object p1
.end method
