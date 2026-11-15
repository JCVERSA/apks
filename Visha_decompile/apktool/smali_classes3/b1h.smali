.class public final Lb1h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lq0h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lq0h;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb1h;->a:Lq0h;

    return-void
.end method

.method public static b(Lq0h;)Lb1h;
    .locals 1

    new-instance v0, Lb1h;

    invoke-direct {v0, p0}, Lb1h;-><init>(Lq0h;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lfy0;Ls0h;Loxg;Lwth;)Lq0h;
    .locals 0

    iget-object p0, p0, Lb1h;->a:Lq0h;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lq0h;

    invoke-direct {p0, p1, p2, p3, p4}, Lq0h;-><init>(Lfy0;Ls0h;Loxg;Lwth;)V

    return-object p0
.end method
