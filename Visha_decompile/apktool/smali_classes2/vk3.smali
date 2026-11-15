.class public final synthetic Lvk3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/content/pm/ShortcutInfo$Builder;

.field public final synthetic d:Landroid/content/pm/ShortcutManager;

.field public final synthetic e:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

.field public final synthetic f:Le74;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/pm/ShortcutInfo$Builder;Landroid/content/pm/ShortcutManager;Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;Le74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvk3;->b:Ljava/lang/String;

    iput-object p2, p0, Lvk3;->c:Landroid/content/pm/ShortcutInfo$Builder;

    iput-object p3, p0, Lvk3;->d:Landroid/content/pm/ShortcutManager;

    iput-object p4, p0, Lvk3;->e:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

    iput-object p5, p0, Lvk3;->f:Le74;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lvk3;->b:Ljava/lang/String;

    iget-object v1, p0, Lvk3;->c:Landroid/content/pm/ShortcutInfo$Builder;

    iget-object v2, p0, Lvk3;->d:Landroid/content/pm/ShortcutManager;

    iget-object v3, p0, Lvk3;->e:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

    iget-object p0, p0, Lvk3;->f:Le74;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/cloud/hisavana/sdk/F0;->a(Ljava/lang/String;Landroid/content/pm/ShortcutInfo$Builder;Landroid/content/pm/ShortcutManager;Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;Le74;)V

    return-void
.end method
