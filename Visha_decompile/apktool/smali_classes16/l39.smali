.class public final synthetic Ll39;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/widget/SearchBar;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetslib/widget/SearchBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll39;->b:Lcom/transsion/widgetslib/widget/SearchBar;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Ll39;->b:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager$b;->a(Lcom/transsion/widgetslib/widget/SearchBar;)V

    return-void
.end method
