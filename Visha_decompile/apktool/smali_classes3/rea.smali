.class public Lrea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/a$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrea$a;
    }
.end annotation


# static fields
.field public static final c:Lrea;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lrea;->a()Lrea$a;

    move-result-object v0

    invoke-virtual {v0}, Lrea$a;->a()Lrea;

    move-result-object v0

    sput-object v0, Lrea;->c:Lrea;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lnzd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrea;->b:Ljava/lang/String;

    return-void
.end method

.method public static a()Lrea$a;
    .locals 2

    new-instance v0, Lrea$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrea$a;-><init>(Llzd;)V

    return-object v0
.end method


# virtual methods
.method public final b()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lrea;->b:Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v1, "api"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lrea;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lrea;

    iget-object p0, p0, Lrea;->b:Ljava/lang/String;

    iget-object p1, p1, Lrea;->b:Ljava/lang/String;

    invoke-static {p0, p1}, Ljc7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lrea;->b:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljc7;->b([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
