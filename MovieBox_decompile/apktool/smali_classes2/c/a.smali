.class public interface abstract Lc/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a$b;,
        Lc/a$a;
    }
.end annotation


# static fields
.field public static final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0x24

    .line 2
    .line 3
    const/16 v1, 0x2e

    .line 4
    .line 5
    const-string v2, "android$support$customtabs$ICustomTabsCallback"

    .line 6
    .line 7
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lc/a;->f:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public abstract B0(IILandroid/os/Bundle;)V
.end method

.method public abstract K0(ILandroid/os/Bundle;)V
.end method

.method public abstract L(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract O0(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract R0(Landroid/os/Bundle;)V
.end method

.method public abstract T0(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
.end method

.method public abstract s(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method
