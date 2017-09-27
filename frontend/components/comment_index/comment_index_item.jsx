import React from 'react';

class CommentIndexItem extends React.Component {
  constructor(props) {
    super(props)
  }

  render() {
    return(
      <div className="comment-index-item">
        <div className="comment-index-item-body">
          {this.props.comment.body}
        </div>
        <div className="comment-index-item-info">
          {this.props.comment.createdAt}
        </div>
      </div>
    )
  }
}

export default CommentIndexItem;
