.class public Lorg/acra/sender/EmailIntentSenderFactory;
.super Lorg/acra/plugins/HasConfigPlugin;
.source "SourceFile"

# interfaces
.implements Lorg/acra/sender/ReportSenderFactory;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0017\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lorg/acra/sender/EmailIntentSenderFactory;",
        "Lorg/acra/plugins/HasConfigPlugin;",
        "Lorg/acra/sender/ReportSenderFactory;",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "Lorg/acra/config/CoreConfiguration;",
        "config",
        "Lus8;",
        "create",
        "(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)Lus8;",
        "acra-mail_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-class v0, Lorg/acra/config/MailSenderConfiguration;

    invoke-direct {p0, v0}, Lorg/acra/plugins/HasConfigPlugin;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)Lus8;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "config"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lorg/acra/sender/EmailIntentSender;

    invoke-direct {p0, p2}, Lorg/acra/sender/EmailIntentSender;-><init>(Lorg/acra/config/CoreConfiguration;)V

    return-object p0
.end method
