.class public Lorg/acra/sender/EmailIntentSender;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lus8;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/acra/sender/EmailIntentSender$a;
    }
.end annotation


# static fields
.field public static final c:Lorg/acra/sender/EmailIntentSender$a;


# instance fields
.field public final a:Lorg/acra/config/CoreConfiguration;

.field public final b:Lorg/acra/config/MailSenderConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/acra/sender/EmailIntentSender$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/acra/sender/EmailIntentSender$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/acra/sender/EmailIntentSender;->c:Lorg/acra/sender/EmailIntentSender$a;

    return-void
.end method

.method public constructor <init>(Lorg/acra/config/CoreConfiguration;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/acra/sender/EmailIntentSender;->a:Lorg/acra/config/CoreConfiguration;

    const-class v0, Lorg/acra/config/MailSenderConfiguration;

    invoke-static {p1, v0}, Lue1;->b(Lorg/acra/config/CoreConfiguration;Ljava/lang/Class;)Lorg/acra/config/Configuration;

    move-result-object p1

    check-cast p1, Lorg/acra/config/MailSenderConfiguration;

    iput-object p1, p0, Lorg/acra/sender/EmailIntentSender;->b:Lorg/acra/config/MailSenderConfiguration;

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public c(Landroid/content/Context;Lorg/acra/data/CrashReportData;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorContent"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/acra/sender/EmailIntentSender;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/acra/sender/EmailIntentSender;->a:Lorg/acra/config/CoreConfiguration;

    invoke-virtual {v1}, Lorg/acra/config/CoreConfiguration;->getReportFormat()Lorg/acra/data/StringFormat;

    move-result-object v2

    iget-object v1, p0, Lorg/acra/sender/EmailIntentSender;->a:Lorg/acra/config/CoreConfiguration;

    invoke-virtual {v1}, Lorg/acra/config/CoreConfiguration;->getReportContent()Ljava/util/List;

    move-result-object v4

    const-string v5, "\n"

    const-string v6, "\n\t"

    const/4 v7, 0x0

    move-object v3, p2

    invoke-virtual/range {v2 .. v7}, Lorg/acra/data/StringFormat;->toFormattedString(Lorg/acra/data/CrashReportData;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1, p2}, Lorg/acra/sender/EmailIntentSender;->k(Landroid/content/Context;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p2

    invoke-virtual {p2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, v0, v1, p2, p1}, Lorg/acra/sender/EmailIntentSender;->o(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/content/Context;)V

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/acra/sender/ReportSenderException;

    const-string p2, "Failed to convert Report to text"

    invoke-direct {p1, p2, p0}, Lorg/acra/sender/ReportSenderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;
    .locals 2

    const-string v0, "subject"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachments"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/acra/sender/EmailIntentSender;->b:Lorg/acra/config/MailSenderConfiguration;

    invoke-virtual {p0}, Lorg/acra/config/MailSenderConfiguration;->getMailTo()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p0, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    check-cast p3, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p3, p0}, Li81;->X0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    const-string p1, "android.intent.extra.STREAM"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string p0, "android.intent.extra.TEXT"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5

    const-string v0, "subject"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/acra/sender/EmailIntentSender;->b:Lorg/acra/config/MailSenderConfiguration;

    invoke-virtual {p0}, Lorg/acra/config/MailSenderConfiguration;->getMailTo()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mailto:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?subject="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&body="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p0, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "android.intent.extra.TEXT"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public final f(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Intent;)Ljava/util/List;
    .locals 2

    const/high16 p0, 0x10000

    invoke-virtual {p1, p2, p0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    const-string p2, "pm.queryIntentActivities\u2026nager.MATCH_DEFAULT_ONLY)"

    invoke-static {p0, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public g()Landroid/content/Intent;
    .locals 1

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.SENDTO"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "mailto:"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2

    const-string v0, "subject"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachment"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/acra/sender/EmailIntentSender;->b:Lorg/acra/config/MailSenderConfiguration;

    invoke-virtual {p0}, Lorg/acra/config/MailSenderConfiguration;->getMailTo()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p0, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "android.intent.extra.STREAM"

    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p0, "android.intent.extra.TEXT"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public i(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/acra/sender/EmailIntentSender;->b:Lorg/acra/config/MailSenderConfiguration;

    invoke-virtual {p0}, Lorg/acra/config/MailSenderConfiguration;->getSubject()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Crash Report"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "name"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "content"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0, p3}, Lov4;->e(Ljava/io/File;Ljava/lang/String;)V

    sget-object p2, Lorg/acra/attachment/AcraContentProvider;->c:Lorg/acra/attachment/AcraContentProvider$a;

    invoke-virtual {p2, p1, p0}, Lorg/acra/attachment/AcraContentProvider$a;->c(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public k(Landroid/content/Context;Ljava/lang/String;)Lkotlin/Pair;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reportText"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/acra/sender/EmailIntentSender;->b:Lorg/acra/config/MailSenderConfiguration;

    invoke-virtual {v0}, Lorg/acra/config/MailSenderConfiguration;->getBody()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/acra/sender/EmailIntentSender;->b:Lorg/acra/config/MailSenderConfiguration;

    invoke-virtual {v1}, Lorg/acra/config/MailSenderConfiguration;->getReportAsFile()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p2

    :cond_2
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lorg/acra/sender/EmailIntentSender;->a:Lorg/acra/config/CoreConfiguration;

    invoke-virtual {v2}, Lorg/acra/config/CoreConfiguration;->getAttachmentUriProvider()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lorg/acra/sender/EmailIntentSender$getBodyAndAttachments$1;->INSTANCE:Lorg/acra/sender/EmailIntentSender$getBodyAndAttachments$1;

    invoke-static {v2, v3}, Li15;->b(Ljava/lang/Class;Lc74;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcl;

    iget-object v3, p0, Lorg/acra/sender/EmailIntentSender;->a:Lorg/acra/config/CoreConfiguration;

    invoke-interface {v2, p1, v3}, Lcl;->a(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lorg/acra/sender/EmailIntentSender;->b:Lorg/acra/config/MailSenderConfiguration;

    invoke-virtual {v2}, Lorg/acra/config/MailSenderConfiguration;->getReportAsFile()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/acra/sender/EmailIntentSender;->b:Lorg/acra/config/MailSenderConfiguration;

    invoke-virtual {v2}, Lorg/acra/config/MailSenderConfiguration;->getReportFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2, p2}, Lorg/acra/sender/EmailIntentSender;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {v0, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final l(Landroid/content/ComponentName;Ljava/util/List;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android"

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v0, :cond_1

    const/4 p0, 0x0

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final m(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    if-nez p3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    const/high16 v0, 0x10000

    invoke-virtual {p3, p2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/acra/sender/EmailIntentSender;->m(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    const/4 p4, 0x1

    invoke-virtual {p1, p3, p2, p4}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final n(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/content/Context;)V
    .locals 6

    invoke-virtual {p4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lorg/acra/sender/EmailIntentSender;->g()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/acra/sender/EmailIntentSender;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/acra/sender/EmailIntentSender;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v5, "*/*"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "pm"

    invoke-static {v0, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1, v3}, Lorg/acra/sender/EmailIntentSender;->f(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lorg/acra/sender/EmailIntentSender;->l(Landroid/content/ComponentName;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-nez v2, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p4, p2, v0, p3}, Lorg/acra/sender/EmailIntentSender;->m(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Li81;->e1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p4, p1}, Lorg/acra/sender/EmailIntentSender;->p(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p4, v3, v2, p3}, Lorg/acra/sender/EmailIntentSender;->m(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p4, v4, v2, p3}, Lorg/acra/sender/EmailIntentSender;->m(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p4, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_4
    sget-object p3, Lc;->d:Le;

    sget-object v0, Lc;->c:Ljava/lang/String;

    const-string v1, "No email client supporting attachments found. Attachments will be ignored"

    invoke-interface {p3, v0, v1}, Le;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lorg/acra/sender/EmailIntentSender;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void

    :cond_5
    new-instance p0, Lorg/acra/sender/ReportSenderException;

    const-string p1, "No email client found"

    invoke-direct {p0, p1}, Lorg/acra/sender/ReportSenderException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/content/Context;)V
    .locals 2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p3}, Li81;->o0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, v0}, Lorg/acra/sender/EmailIntentSender;->h(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/acra/sender/EmailIntentSender;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lorg/acra/sender/EmailIntentSender;->g()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p4, v0, v1, p3}, Lorg/acra/sender/EmailIntentSender;->m(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;)V

    :try_start_0
    invoke-virtual {p4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/acra/sender/EmailIntentSender;->n(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/content/Context;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_1
    move-exception p0

    new-instance p1, Lorg/acra/sender/ReportSenderException;

    const-string p2, "No email client found"

    invoke-direct {p1, p2, p0}, Lorg/acra/sender/ReportSenderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1, v0}, Lue3;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final p(Landroid/content/Context;Ljava/util/List;)V
    .locals 3

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.CHOOSER"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    check-cast p2, Ljava/util/Collection;

    new-array v0, v0, [Landroid/content/Intent;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/os/Parcelable;

    const-string v0, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {p0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
