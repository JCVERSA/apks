.class public Ln20$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln20$a$a;
    }
.end annotation


# static fields
.field public static final e:Ln20$a;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln20$a$a;

    invoke-direct {v0}, Ln20$a$a;-><init>()V

    new-instance v1, Ln20$a;

    invoke-direct {v1, v0}, Ln20$a;-><init>(Ln20$a$a;)V

    sput-object v1, Ln20$a;->e:Ln20$a;

    return-void
.end method

.method public constructor <init>(Ln20$a$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ln20$a;->b:Ljava/lang/String;

    iget-object v0, p1, Ln20$a$a;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Ln20$a;->c:Z

    iget-object p1, p1, Ln20$a$a;->b:Ljava/lang/String;

    iput-object p1, p0, Ln20$a;->d:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic b(Ln20$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ln20$a;->b:Ljava/lang/String;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static bridge synthetic c(Ln20$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ln20$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic d(Ln20$a;)Z
    .locals 0

    iget-boolean p0, p0, Ln20$a;->c:Z

    return p0
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "consumer_package"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "force_save_dialog"

    iget-boolean v2, p0, Ln20$a;->c:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "log_session_id"

    iget-object p0, p0, Ln20$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ln20$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ln20$a;

    iget-object v1, p1, Ln20$a;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1, v1}, Ljc7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Ln20$a;->c:Z

    iget-boolean v3, p1, Ln20$a;->c:Z

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Ln20$a;->d:Ljava/lang/String;

    iget-object p1, p1, Ln20$a;->d:Ljava/lang/String;

    invoke-static {p0, p1}, Ljc7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Ln20$a;->c:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object p0, p0, Ln20$a;->d:Ljava/lang/String;

    const/4 v1, 0x0

    filled-new-array {v1, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljc7;->b([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
