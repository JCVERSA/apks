.class public final synthetic Lp95;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/acra/sender/JobSenderService;

.field public final synthetic c:Lorg/acra/config/CoreConfiguration;

.field public final synthetic d:Landroid/os/PersistableBundle;

.field public final synthetic e:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lorg/acra/sender/JobSenderService;Lorg/acra/config/CoreConfiguration;Landroid/os/PersistableBundle;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp95;->b:Lorg/acra/sender/JobSenderService;

    iput-object p2, p0, Lp95;->c:Lorg/acra/config/CoreConfiguration;

    iput-object p3, p0, Lp95;->d:Landroid/os/PersistableBundle;

    iput-object p4, p0, Lp95;->e:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lp95;->b:Lorg/acra/sender/JobSenderService;

    iget-object v1, p0, Lp95;->c:Lorg/acra/config/CoreConfiguration;

    iget-object v2, p0, Lp95;->d:Landroid/os/PersistableBundle;

    iget-object p0, p0, Lp95;->e:Landroid/app/job/JobParameters;

    invoke-static {v0, v1, v2, p0}, Lorg/acra/sender/JobSenderService;->a(Lorg/acra/sender/JobSenderService;Lorg/acra/config/CoreConfiguration;Landroid/os/PersistableBundle;Landroid/app/job/JobParameters;)V

    return-void
.end method
