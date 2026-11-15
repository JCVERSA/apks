.class public final Lorg/acra/config/MailSenderConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/acra/config/Configuration;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001BC\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u0002\u001a\u00020\u0003H\u0016R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000cR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000c\u00a8\u0006\u0013"
    }
    d2 = {
        "Lorg/acra/config/MailSenderConfiguration;",
        "Lorg/acra/config/Configuration;",
        "enabled",
        "",
        "mailTo",
        "",
        "reportAsFile",
        "reportFileName",
        "subject",
        "body",
        "(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getBody",
        "()Ljava/lang/String;",
        "getEnabled",
        "()Z",
        "getMailTo",
        "getReportAsFile",
        "getReportFileName",
        "getSubject",
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


# instance fields
.field private final body:Ljava/lang/String;

.field private final enabled:Z

.field private final mailTo:Ljava/lang/String;

.field private final reportAsFile:Z

.field private final reportFileName:Ljava/lang/String;

.field private final subject:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "mailTo"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reportFileName"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lorg/acra/config/MailSenderConfiguration;->enabled:Z

    .line 3
    iput-object p2, p0, Lorg/acra/config/MailSenderConfiguration;->mailTo:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lorg/acra/config/MailSenderConfiguration;->reportAsFile:Z

    .line 5
    iput-object p4, p0, Lorg/acra/config/MailSenderConfiguration;->reportFileName:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lorg/acra/config/MailSenderConfiguration;->subject:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lorg/acra/config/MailSenderConfiguration;->body:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p7, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, p1

    :goto_0
    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, p3

    :goto_1
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_2

    .line 8
    const-string v0, "ACRA-report.stacktrace"

    move-object v6, v0

    goto :goto_2

    :cond_2
    move-object v6, p4

    :goto_2
    and-int/lit8 v0, p7, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    move-object v7, v1

    goto :goto_3

    :cond_3
    move-object v7, p5

    :goto_3
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_4

    move-object v8, v1

    goto :goto_4

    :cond_4
    move-object v8, p6

    :goto_4
    move-object v2, p0

    move-object v4, p2

    .line 9
    invoke-direct/range {v2 .. v8}, Lorg/acra/config/MailSenderConfiguration;-><init>(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public enabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/acra/config/MailSenderConfiguration;->enabled:Z

    return p0
.end method

.method public final getBody()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/acra/config/MailSenderConfiguration;->body:Ljava/lang/String;

    return-object p0
.end method

.method public final getEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/acra/config/MailSenderConfiguration;->enabled:Z

    return p0
.end method

.method public final getMailTo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/acra/config/MailSenderConfiguration;->mailTo:Ljava/lang/String;

    return-object p0
.end method

.method public final getReportAsFile()Z
    .locals 0

    iget-boolean p0, p0, Lorg/acra/config/MailSenderConfiguration;->reportAsFile:Z

    return p0
.end method

.method public final getReportFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/acra/config/MailSenderConfiguration;->reportFileName:Ljava/lang/String;

    return-object p0
.end method

.method public final getSubject()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/acra/config/MailSenderConfiguration;->subject:Ljava/lang/String;

    return-object p0
.end method
