
def qs(a,f,n):
    if(f<n):
        p=a[f]
        i=f+1
        j=n
        while(i<j):
            while(i<n and a[i]<p):
                i+=1
            while(j>1 and a[j]>p ):
                j-=1
            if i<j:
                temp=a[i]
                a[i]=a[j]
                a[j]=temp
        if(a[j]< a[f]):
          temp=a[j]
          a[j]=a[f]
          a[f]=temp
        qs(a,f,j-1)
        qs(a,j+1,n)
    else:
        return
a=[22,12,33,44,55]
qs(a,0,len(a)-1)
print(a)
