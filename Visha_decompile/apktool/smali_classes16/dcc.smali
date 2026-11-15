.class public final synthetic Ldcc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Ljava/lang/CharSequence;

.field public final synthetic d:F


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Ljava/lang/CharSequence;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldcc;->b:Landroid/widget/TextView;

    iput-object p2, p0, Ldcc;->c:Ljava/lang/CharSequence;

    iput p3, p0, Ldcc;->d:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ldcc;->b:Landroid/widget/TextView;

    iget-object v1, p0, Ldcc;->c:Ljava/lang/CharSequence;

    iget p0, p0, Ldcc;->d:F

    invoke-static {v0, v1, p0}, Lgcc;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;F)V

    return-void
.end method
