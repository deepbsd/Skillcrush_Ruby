#!/usr/bin/env ruby


class Blog

    @@all_posts = []
    @@total_posts = 0

    def self.all
      @@all_posts
    end

    def self.add(b_post)
      @@all_posts << b_post
      @@total_posts += 1
    end

    def self.publish
      @@all_posts.each do |post|
        puts "Title:  #{post.title}"
        puts "Body:  #{post.content}"
        puts "By:  #{post.author}"
        puts "Date Posted:  #{post.time}"
      end
    end
  end



class BlogPost < Blog

    def self.create
      post = new
      puts "Name your blog post:"
      post.title = gets.chomp
      puts "Your name?"
      post.author = gets.chomp
      puts "Enter your blog post: "
      post.content = gets.chomp
      post.time = Time.now
      post.save
      puts "Create another post? [Y/N]"
      create_another = gets.chomp.downcase
      create if create_another.include? 'y'
    end

    def title
      @title
    end

    def title=(title)
      @title = title
    end

    def author
      @author
    end

    def author=(author)
      @author = author
    end

    def time
      @time
    end

    def time=(time)
      @time = time
    end

    def content
      @content
    end

    def content=(content)
      @content = content
    end

    def save
      BlogPost.add(self)
    end

  end

  BlogPost.create
  my_blog_posts = BlogPost.all
  puts my_blog_posts
  BlogPost.publish
  
