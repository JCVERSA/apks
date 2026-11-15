.class public final synthetic Lw7a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic b:Le74;


# direct methods
.method public synthetic constructor <init>(Le74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw7a;->b:Le74;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p0, p0, Lw7a;->b:Le74;

    invoke-static {p0, p1, p2}, Lcom/yandex/div/internal/widget/SwitchView;->b(Le74;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
