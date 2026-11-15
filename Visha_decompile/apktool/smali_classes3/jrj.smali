.class public final Ljrj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Llrj;

.field public c:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Llrj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljrj;->a:Landroid/os/Handler;

    iput-object p2, p0, Ljrj;->b:Llrj;

    return-void
.end method

.method public static bridge synthetic a(Ljrj;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Ljrj;->a:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic b(Ljrj;)Llrj;
    .locals 0

    iget-object p0, p0, Ljrj;->b:Llrj;

    return-object p0
.end method

.method public static bridge synthetic d(Ljrj;)Z
    .locals 0

    iget-boolean p0, p0, Ljrj;->c:Z

    return p0
.end method


# virtual methods
.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljrj;->c:Z

    return-void
.end method
