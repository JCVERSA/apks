.class public final synthetic Lv4b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/core/content/pm/TranThubShortcutManager;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/content/pm/ShortcutInfo;

.field public final synthetic d:Landroid/content/IntentSender;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/content/pm/TranThubShortcutManager;Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv4b;->a:Lcom/transsion/hubsdk/core/content/pm/TranThubShortcutManager;

    iput-object p2, p0, Lv4b;->b:Ljava/lang/String;

    iput-object p3, p0, Lv4b;->c:Landroid/content/pm/ShortcutInfo;

    iput-object p4, p0, Lv4b;->d:Landroid/content/IntentSender;

    iput p5, p0, Lv4b;->e:I

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lv4b;->a:Lcom/transsion/hubsdk/core/content/pm/TranThubShortcutManager;

    iget-object v1, p0, Lv4b;->b:Ljava/lang/String;

    iget-object v2, p0, Lv4b;->c:Landroid/content/pm/ShortcutInfo;

    iget-object v3, p0, Lv4b;->d:Landroid/content/IntentSender;

    iget p0, p0, Lv4b;->e:I

    invoke-static {v0, v1, v2, v3, p0}, Lcom/transsion/hubsdk/core/content/pm/TranThubShortcutManager;->a(Lcom/transsion/hubsdk/core/content/pm/TranThubShortcutManager;Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
