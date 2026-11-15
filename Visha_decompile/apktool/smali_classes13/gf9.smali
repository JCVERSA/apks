.class public final synthetic Lgf9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lab9$b;


# instance fields
.field public final synthetic a:Lcom/transsion/tools/fragments/SettingFragment;

.field public final synthetic b:Lcom/transsion/widgetslib/dialog/d;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/tools/fragments/SettingFragment;Lcom/transsion/widgetslib/dialog/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgf9;->a:Lcom/transsion/tools/fragments/SettingFragment;

    iput-object p2, p0, Lgf9;->b:Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method


# virtual methods
.method public final onItemClick(I)V
    .locals 1

    iget-object v0, p0, Lgf9;->a:Lcom/transsion/tools/fragments/SettingFragment;

    iget-object p0, p0, Lgf9;->b:Lcom/transsion/widgetslib/dialog/d;

    invoke-static {v0, p0, p1}, Lcom/transsion/tools/fragments/SettingFragment;->Q(Lcom/transsion/tools/fragments/SettingFragment;Lcom/transsion/widgetslib/dialog/d;I)V

    return-void
.end method
