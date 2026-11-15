.class public Lcm7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic b:Lho7;


# direct methods
.method public constructor <init>(Lho7;)V
    .locals 0

    iput-object p1, p0, Lcm7;->b:Lho7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p0, p0, Lcm7;->b:Lho7;

    iget-object p0, p0, Lho7;->c:Landroid/widget/Button;

    invoke-virtual {p0, p2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
