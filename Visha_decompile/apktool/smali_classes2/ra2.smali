.class public final synthetic Lra2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic b:Lwa2$c;


# direct methods
.method public synthetic constructor <init>(Lwa2$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lra2;->b:Lwa2$c;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p0, p0, Lra2;->b:Lwa2$c;

    invoke-static {p0, p1, p2}, Lwa2$a;->c(Lwa2$c;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
