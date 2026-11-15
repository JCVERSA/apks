.class Lcom/transsion/widgets/DelegatingPagerAdapter$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgets/DelegatingPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final mParent:Lcom/transsion/widgets/DelegatingPagerAdapter;


# direct methods
.method private constructor <init>(Lcom/transsion/widgets/DelegatingPagerAdapter;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/widgets/DelegatingPagerAdapter$MyDataSetObserver;->mParent:Lcom/transsion/widgets/DelegatingPagerAdapter;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/widgets/DelegatingPagerAdapter;Lm72;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/widgets/DelegatingPagerAdapter$MyDataSetObserver;-><init>(Lcom/transsion/widgets/DelegatingPagerAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/DelegatingPagerAdapter$MyDataSetObserver;->mParent:Lcom/transsion/widgets/DelegatingPagerAdapter;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/transsion/widgets/DelegatingPagerAdapter;->a(Lcom/transsion/widgets/DelegatingPagerAdapter;)V

    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgets/DelegatingPagerAdapter$MyDataSetObserver;->onChanged()V

    return-void
.end method
