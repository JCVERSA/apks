.class public final synthetic Lno9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lno9;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    iput p2, p0, Lno9;->c:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lno9;->b:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    iget p0, p0, Lno9;->c:I

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v0, p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->O0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;ILandroid/graphics/Bitmap;)V

    return-void
.end method
