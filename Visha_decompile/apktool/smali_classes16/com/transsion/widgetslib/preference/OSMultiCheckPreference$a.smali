.class public Lcom/transsion/widgetslib/preference/OSMultiCheckPreference$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->i(Lcom/transsion/widgetslib/dialog/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference$a;->a:Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference$a;->a:Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;

    invoke-static {p0}, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->n(Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;)[Z

    move-result-object p0

    aput-boolean p3, p0, p2

    return-void
.end method
