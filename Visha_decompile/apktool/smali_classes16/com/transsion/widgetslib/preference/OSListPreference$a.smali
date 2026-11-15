.class public Lcom/transsion/widgetslib/preference/OSListPreference$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/preference/OSListPreference;->i(Lcom/transsion/widgetslib/dialog/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/preference/OSListPreference;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/preference/OSListPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSListPreference$a;->b:Lcom/transsion/widgetslib/preference/OSListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSListPreference$a;->b:Lcom/transsion/widgetslib/preference/OSListPreference;

    invoke-static {v0, p2}, Lcom/transsion/widgetslib/preference/OSListPreference;->n(Lcom/transsion/widgetslib/preference/OSListPreference;I)V

    iget-object p2, p0, Lcom/transsion/widgetslib/preference/OSListPreference$a;->b:Lcom/transsion/widgetslib/preference/OSListPreference;

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSListPreference$a;->b:Lcom/transsion/widgetslib/preference/OSListPreference;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->j()V

    return-void
.end method
