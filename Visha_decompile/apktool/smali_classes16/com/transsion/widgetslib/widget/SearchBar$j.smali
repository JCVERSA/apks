.class public Lcom/transsion/widgetslib/widget/SearchBar$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/SearchBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "j"
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/widget/SearchBar;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/SearchBar;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$j;->b:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar$j;->b:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->endSearch()V

    return-void
.end method
