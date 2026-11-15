.class public final synthetic Lio9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Landroid/graphics/Bitmap;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio9;->b:Landroid/graphics/Bitmap;

    iput p2, p0, Lio9;->c:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio9;->b:Landroid/graphics/Bitmap;

    iget p0, p0, Lio9;->c:I

    check-cast p1, Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {v0, p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->M0(Landroid/graphics/Bitmap;ILcom/transsion/tools/activities/SkinsCustomizeActivity;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
