.class public final Lorg/mozilla/javascript/SecurityUtilities$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/javascript/SecurityUtilities;->getScriptProtectionDomain()Ljava/security/ProtectionDomain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/SecurityManager;


# direct methods
.method public constructor <init>(Ljava/lang/SecurityManager;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/SecurityUtilities$c;->a:Ljava/lang/SecurityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/security/ProtectionDomain;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/SecurityUtilities$c;->a:Ljava/lang/SecurityManager;

    check-cast p0, Lorg/mozilla/javascript/RhinoSecurityManager;

    invoke-virtual {p0}, Lorg/mozilla/javascript/RhinoSecurityManager;->getCurrentScriptClass()Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/mozilla/javascript/SecurityUtilities$c;->a()Ljava/security/ProtectionDomain;

    move-result-object p0

    return-object p0
.end method
