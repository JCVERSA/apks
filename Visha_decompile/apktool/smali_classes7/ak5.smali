.class public final synthetic Lak5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/acra/sender/LegacySenderService;

.field public final synthetic c:Lorg/acra/config/CoreConfiguration;

.field public final synthetic d:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lorg/acra/sender/LegacySenderService;Lorg/acra/config/CoreConfiguration;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lak5;->b:Lorg/acra/sender/LegacySenderService;

    iput-object p2, p0, Lak5;->c:Lorg/acra/config/CoreConfiguration;

    iput-object p3, p0, Lak5;->d:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lak5;->b:Lorg/acra/sender/LegacySenderService;

    iget-object v1, p0, Lak5;->c:Lorg/acra/config/CoreConfiguration;

    iget-object p0, p0, Lak5;->d:Landroid/content/Intent;

    invoke-static {v0, v1, p0}, Lorg/acra/sender/LegacySenderService;->a(Lorg/acra/sender/LegacySenderService;Lorg/acra/config/CoreConfiguration;Landroid/content/Intent;)V

    return-void
.end method
