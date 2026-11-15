.class public final synthetic Ldp9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/tools/fragments/SkinsPreviewFragment$b;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/tools/fragments/SkinsPreviewFragment$b;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldp9;->b:Lcom/transsion/tools/fragments/SkinsPreviewFragment$b;

    iput p2, p0, Ldp9;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ldp9;->b:Lcom/transsion/tools/fragments/SkinsPreviewFragment$b;

    iget p0, p0, Ldp9;->c:I

    invoke-static {v0, p0}, Lcom/transsion/tools/fragments/SkinsPreviewFragment$b;->h(Lcom/transsion/tools/fragments/SkinsPreviewFragment$b;I)V

    return-void
.end method
