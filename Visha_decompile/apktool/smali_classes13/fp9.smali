.class public final synthetic Lfp9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/tools/fragments/SkinsPreviewFragment$b;

.field public final synthetic c:Lcom/transsion/dbdata/beans/SkinsMenu;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/tools/fragments/SkinsPreviewFragment$b;Lcom/transsion/dbdata/beans/SkinsMenu;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfp9;->b:Lcom/transsion/tools/fragments/SkinsPreviewFragment$b;

    iput-object p2, p0, Lfp9;->c:Lcom/transsion/dbdata/beans/SkinsMenu;

    iput-object p3, p0, Lfp9;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lfp9;->b:Lcom/transsion/tools/fragments/SkinsPreviewFragment$b;

    iget-object v1, p0, Lfp9;->c:Lcom/transsion/dbdata/beans/SkinsMenu;

    iget-object p0, p0, Lfp9;->d:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/transsion/tools/fragments/SkinsPreviewFragment$b;->e(Lcom/transsion/tools/fragments/SkinsPreviewFragment$b;Lcom/transsion/dbdata/beans/SkinsMenu;Ljava/lang/String;)V

    return-void
.end method
