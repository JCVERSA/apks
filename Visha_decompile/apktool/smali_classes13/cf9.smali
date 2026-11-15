.class public final synthetic Lcf9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/tools/fragments/SettingFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/tools/fragments/SettingFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcf9;->a:Lcom/transsion/tools/fragments/SettingFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcf9;->a:Lcom/transsion/tools/fragments/SettingFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/transsion/tools/fragments/SettingFragment;->T(Lcom/transsion/tools/fragments/SettingFragment;Ljava/lang/Boolean;)V

    return-void
.end method
