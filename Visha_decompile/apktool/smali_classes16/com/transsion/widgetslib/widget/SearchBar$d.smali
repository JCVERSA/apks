.class public Lcom/transsion/widgetslib/widget/SearchBar$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/SearchBar;->I()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/widget/SearchBar;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/SearchBar;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$d;->b:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar$d;->b:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->w(Lcom/transsion/widgetslib/widget/SearchBar;)V

    const/4 p0, 0x1

    return p0
.end method
