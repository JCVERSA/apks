.class public final synthetic Lef9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic b:Lcom/transsion/tools/fragments/SettingFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/tools/fragments/SettingFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lef9;->b:Lcom/transsion/tools/fragments/SettingFragment;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p0, p0, Lef9;->b:Lcom/transsion/tools/fragments/SettingFragment;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/tools/fragments/SettingFragment;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    return-void
.end method
