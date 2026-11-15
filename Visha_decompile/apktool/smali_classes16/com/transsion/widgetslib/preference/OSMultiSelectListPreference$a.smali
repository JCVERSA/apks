.class public Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->i(Lcom/transsion/widgetslib/dialog/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference$a;->a:Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference$a;->a:Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;

    invoke-static {p1}, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->p(Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;)Z

    move-result p3

    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference$a;->a:Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;

    invoke-static {v0}, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->o(Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;)Ljava/util/Set;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference$a;->a:Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;

    invoke-static {p0}, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->n(Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;)[Ljava/lang/CharSequence;

    move-result-object p0

    aget-object p0, p0, p2

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    or-int/2addr p0, p3

    invoke-static {p1, p0}, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->q(Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference$a;->a:Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;

    invoke-static {p1}, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->p(Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;)Z

    move-result p3

    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference$a;->a:Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;

    invoke-static {v0}, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->o(Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;)Ljava/util/Set;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference$a;->a:Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;

    invoke-static {p0}, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->n(Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;)[Ljava/lang/CharSequence;

    move-result-object p0

    aget-object p0, p0, p2

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    or-int/2addr p0, p3

    invoke-static {p1, p0}, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->q(Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;Z)V

    :goto_0
    return-void
.end method
