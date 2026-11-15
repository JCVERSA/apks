.class public final synthetic Lecc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Lvx0;

.field public final synthetic d:I

.field public final synthetic e:F


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Lvx0;IF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lecc;->b:Landroid/widget/TextView;

    iput-object p2, p0, Lecc;->c:Lvx0;

    iput p3, p0, Lecc;->d:I

    iput p4, p0, Lecc;->e:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lecc;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lecc;->c:Lvx0;

    iget v2, p0, Lecc;->d:I

    iget p0, p0, Lecc;->e:F

    invoke-static {v0, v1, v2, p0}, Lgcc;->c(Landroid/widget/TextView;Lvx0;IF)V

    return-void
.end method
