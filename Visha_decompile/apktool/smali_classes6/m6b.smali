.class public final synthetic Lm6b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lt6b;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Z

.field public final synthetic e:Landroid/widget/CheckBox;


# direct methods
.method public synthetic constructor <init>(Lt6b;Ljava/util/List;ZLandroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm6b;->b:Lt6b;

    iput-object p2, p0, Lm6b;->c:Ljava/util/List;

    iput-boolean p3, p0, Lm6b;->d:Z

    iput-object p4, p0, Lm6b;->e:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lm6b;->b:Lt6b;

    iget-object v1, p0, Lm6b;->c:Ljava/util/List;

    iget-boolean v2, p0, Lm6b;->d:Z

    iget-object v3, p0, Lm6b;->e:Landroid/widget/CheckBox;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lt6b;->g(Lt6b;Ljava/util/List;ZLandroid/widget/CheckBox;Landroid/content/DialogInterface;I)V

    return-void
.end method
