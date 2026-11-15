.class public final synthetic Lwk3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic b:Landroid/content/pm/ShortcutInfo$Builder;

.field public final synthetic c:Landroid/content/pm/ShortcutManager;

.field public final synthetic d:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

.field public final synthetic e:Le74;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/pm/ShortcutInfo$Builder;Landroid/content/pm/ShortcutManager;Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;Le74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwk3;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lwk3;->b:Landroid/content/pm/ShortcutInfo$Builder;

    iput-object p3, p0, Lwk3;->c:Landroid/content/pm/ShortcutManager;

    iput-object p4, p0, Lwk3;->d:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

    iput-object p5, p0, Lwk3;->e:Le74;

    return-void
.end method


# virtual methods
.method public final onRun()V
    .locals 4

    iget-object v0, p0, Lwk3;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lwk3;->b:Landroid/content/pm/ShortcutInfo$Builder;

    iget-object v2, p0, Lwk3;->c:Landroid/content/pm/ShortcutManager;

    iget-object v3, p0, Lwk3;->d:Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;

    iget-object p0, p0, Lwk3;->e:Le74;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/cloud/hisavana/sdk/F0;->b(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/pm/ShortcutInfo$Builder;Landroid/content/pm/ShortcutManager;Lcom/cloud/hisavana/sdk/common/bean/MiniAppInfo;Le74;)V

    return-void
.end method
